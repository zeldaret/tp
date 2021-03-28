lbl_80C50708:
/* 80C50708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5070C  7C 08 02 A6 */	mflr r0
/* 80C50710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50718  7C 7F 1B 78 */	mr r31, r3
/* 80C5071C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C50720  4B 3B C6 44 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C50724  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C50728  4B 3B C8 1C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C5072C  3C 60 80 C5 */	lis r3, lit_4020@ha
/* 80C50730  C0 23 0D 88 */	lfs f1, lit_4020@l(r3)
/* 80C50734  3C 60 80 C5 */	lis r3, lit_3721@ha
/* 80C50738  C0 43 0D 44 */	lfs f2, lit_3721@l(r3)
/* 80C5073C  FC 60 10 90 */	fmr f3, f2
/* 80C50740  4B 3B C6 5C */	b transM__14mDoMtx_stack_cFfff
/* 80C50744  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C50748  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5074C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C50750  38 84 00 24 */	addi r4, r4, 0x24
/* 80C50754  4B 6F 5D 5C */	b PSMTXCopy
/* 80C50758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5075C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50760  7C 08 03 A6 */	mtlr r0
/* 80C50764  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50768  4E 80 00 20 */	blr 
