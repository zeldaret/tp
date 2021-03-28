lbl_80C97618:
/* 80C97618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9761C  7C 08 02 A6 */	mflr r0
/* 80C97620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C97624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C97628  7C 7F 1B 78 */	mr r31, r3
/* 80C9762C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C97630  4B 37 57 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C97634  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C97638  4B 37 59 0C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C9763C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C97640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C97644  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C97648  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9764C  4B 6A EE 64 */	b PSMTXCopy
/* 80C97650  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80C97654  28 04 00 00 */	cmplwi r4, 0
/* 80C97658  41 82 00 14 */	beq lbl_80C9766C
/* 80C9765C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C97660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C97664  38 84 00 24 */	addi r4, r4, 0x24
/* 80C97668  4B 6A EE 48 */	b PSMTXCopy
lbl_80C9766C:
/* 80C9766C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C97670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C97674  38 9F 07 0C */	addi r4, r31, 0x70c
/* 80C97678  4B 6A EE 38 */	b PSMTXCopy
/* 80C9767C  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80C97680  4B 3E 43 40 */	b Move__4dBgWFv
/* 80C97684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C97688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9768C  7C 08 03 A6 */	mtlr r0
/* 80C97690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C97694  4E 80 00 20 */	blr 
