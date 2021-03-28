lbl_80CF498C:
/* 80CF498C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4990  7C 08 02 A6 */	mflr r0
/* 80CF4994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF499C  7C 7F 1B 78 */	mr r31, r3
/* 80CF49A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF49A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF49A8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CF49AC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CF49B0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CF49B4  4B 65 1F 34 */	b PSMTXTrans
/* 80CF49B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF49BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF49C0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CF49C4  4B 31 7A 70 */	b mDoMtx_YrotM__FPA4_fs
/* 80CF49C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF49CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF49D0  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80CF49D4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF49D8  4B 65 1A D8 */	b PSMTXCopy
/* 80CF49DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF49E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF49E4  7C 08 03 A6 */	mtlr r0
/* 80CF49E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF49EC  4E 80 00 20 */	blr 
