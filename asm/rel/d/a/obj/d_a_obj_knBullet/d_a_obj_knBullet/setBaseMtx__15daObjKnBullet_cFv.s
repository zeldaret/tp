lbl_80C47490:
/* 80C47490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47494  7C 08 02 A6 */	mflr r0
/* 80C47498  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4749C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C474A0  7C 7F 1B 78 */	mr r31, r3
/* 80C474A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C474A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C474AC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C474B0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C474B4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C474B8  4B 6F F4 30 */	b PSMTXTrans
/* 80C474BC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C474C0  4B 3C 5A 14 */	b XYZrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C474C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C474C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C474CC  38 9F 05 68 */	addi r4, r31, 0x568
/* 80C474D0  4B 6F EF E0 */	b PSMTXCopy
/* 80C474D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C474D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C474DC  7C 08 03 A6 */	mtlr r0
/* 80C474E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C474E4  4E 80 00 20 */	blr 
