lbl_806CBE98:
/* 806CBE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CBE9C  7C 08 02 A6 */	mflr r0
/* 806CBEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CBEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CBEA8  7C 7F 1B 78 */	mr r31, r3
/* 806CBEAC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806CBEB0  4B 94 0E B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806CBEB4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806CBEB8  4B 94 10 8C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806CBEBC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CBEC0  80 83 00 04 */	lwz r4, 4(r3)
/* 806CBEC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CBEC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806CBECC  38 84 00 24 */	addi r4, r4, 0x24
/* 806CBED0  4B C7 A5 E0 */	b PSMTXCopy
/* 806CBED4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CBED8  4B 94 53 14 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806CBEDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CBEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CBEE4  7C 08 03 A6 */	mtlr r0
/* 806CBEE8  38 21 00 10 */	addi r1, r1, 0x10
/* 806CBEEC  4E 80 00 20 */	blr 
