lbl_80BA66D4:
/* 80BA66D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA66D8  7C 08 02 A6 */	mflr r0
/* 80BA66DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA66E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA66E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA66E8  7C 7E 1B 78 */	mr r30, r3
/* 80BA66EC  80 63 05 6C */	lwz r3, 0x56c(r3)
/* 80BA66F0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80BA66F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA66F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA66FC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BA6700  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BA6704  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BA6708  4B 7A 01 E0 */	b PSMTXTrans
/* 80BA670C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BA6710  4B 46 68 34 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BA6714  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80BA6718  4B 46 67 58 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BA671C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6724  38 9F 00 24 */	addi r4, r31, 0x24
/* 80BA6728  4B 79 FD 88 */	b PSMTXCopy
/* 80BA672C  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80BA6730  4B 46 AA BC */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80BA6734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA6738  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA673C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6740  7C 08 03 A6 */	mtlr r0
/* 80BA6744  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6748  4E 80 00 20 */	blr 
