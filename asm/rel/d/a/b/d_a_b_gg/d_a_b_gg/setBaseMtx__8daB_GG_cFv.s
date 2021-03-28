lbl_805EB910:
/* 805EB910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB914  7C 08 02 A6 */	mflr r0
/* 805EB918  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB91C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EB920  7C 7F 1B 78 */	mr r31, r3
/* 805EB924  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805EB928  4B A2 14 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805EB92C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805EB930  4B A2 16 14 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805EB934  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805EB938  38 63 D7 0C */	addi r3, r3, l_HIO@l
/* 805EB93C  C0 23 00 08 */	lfs f1, 8(r3)
/* 805EB940  FC 40 08 90 */	fmr f2, f1
/* 805EB944  FC 60 08 90 */	fmr f3, f1
/* 805EB948  4B A2 14 F0 */	b scaleM__14mDoMtx_stack_cFfff
/* 805EB94C  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805EB950  80 83 00 04 */	lwz r4, 4(r3)
/* 805EB954  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EB958  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EB95C  38 84 00 24 */	addi r4, r4, 0x24
/* 805EB960  4B D5 AB 50 */	b PSMTXCopy
/* 805EB964  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805EB968  4B A2 58 84 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805EB96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EB970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB974  7C 08 03 A6 */	mtlr r0
/* 805EB978  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB97C  4E 80 00 20 */	blr 
