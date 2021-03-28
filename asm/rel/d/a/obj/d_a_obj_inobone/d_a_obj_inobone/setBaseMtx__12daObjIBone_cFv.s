lbl_80C2786C:
/* 80C2786C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C27870  7C 08 02 A6 */	mflr r0
/* 80C27874  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C27878  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C2787C  7C 7F 1B 78 */	mr r31, r3
/* 80C27880  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C27884  4B 3E 54 E0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C27888  38 61 00 08 */	addi r3, r1, 8
/* 80C2788C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C27890  38 A0 00 00 */	li r5, 0
/* 80C27894  38 C0 00 00 */	li r6, 0
/* 80C27898  4B 63 FB 5C */	b __ct__5csXyzFsss
/* 80C2789C  38 61 00 08 */	addi r3, r1, 8
/* 80C278A0  4B 3E 56 A4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C278A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C278A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C278AC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C278B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C278B4  4B 71 EB FC */	b PSMTXCopy
/* 80C278B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C278BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C278C0  7C 08 03 A6 */	mtlr r0
/* 80C278C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C278C8  4E 80 00 20 */	blr 
