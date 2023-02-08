lbl_80C19098:
/* 80C19098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1909C  7C 08 02 A6 */	mflr r0
/* 80C190A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C190A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C190A8  7C 7F 1B 78 */	mr r31, r3
/* 80C190AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C190B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C190B4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C190B8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C190BC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C190C0  4B 72 D8 29 */	bl PSMTXTrans
/* 80C190C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C190C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C190CC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C190D0  4B 3F 33 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C190D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C190D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C190DC  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80C190E0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C190E4  4B 72 D3 CD */	bl PSMTXCopy
/* 80C190E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C190EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C190F0  7C 08 03 A6 */	mtlr r0
/* 80C190F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C190F8  4E 80 00 20 */	blr 
