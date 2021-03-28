lbl_80BD6410:
/* 80BD6410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6414  7C 08 02 A6 */	mflr r0
/* 80BD6418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD641C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6420  7C 7F 1B 78 */	mr r31, r3
/* 80BD6424  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BD6428  4B 43 69 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD642C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BD6430  4B 43 6B 14 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD6434  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD6438  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD643C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BD6440  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD6444  4B 77 00 6C */	b PSMTXCopy
/* 80BD6448  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD644C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD6450  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BD6454  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD6458  4B 77 00 58 */	b PSMTXCopy
/* 80BD645C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD6460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6464  7C 08 03 A6 */	mtlr r0
/* 80BD6468  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD646C  4E 80 00 20 */	blr 
