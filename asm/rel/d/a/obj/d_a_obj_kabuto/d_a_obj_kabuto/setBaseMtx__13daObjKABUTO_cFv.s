lbl_80C2D40C:
/* 80C2D40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2D410  7C 08 02 A6 */	mflr r0
/* 80C2D414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2D418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2D41C  7C 7F 1B 78 */	mr r31, r3
/* 80C2D420  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C2D424  4B 3D F9 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C2D428  38 7F 07 2A */	addi r3, r31, 0x72a
/* 80C2D42C  4B 3D FB 18 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C2D430  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C2D434  4B 3D FB 10 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C2D438  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C2D43C  4B 3D FA 34 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C2D440  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80C2D444  80 83 00 04 */	lwz r4, 4(r3)
/* 80C2D448  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2D44C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2D450  38 84 00 24 */	addi r4, r4, 0x24
/* 80C2D454  4B 71 90 5C */	b PSMTXCopy
/* 80C2D458  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80C2D45C  4B 3E 3D 90 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80C2D460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2D464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2D468  7C 08 03 A6 */	mtlr r0
/* 80C2D46C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2D470  4E 80 00 20 */	blr 
