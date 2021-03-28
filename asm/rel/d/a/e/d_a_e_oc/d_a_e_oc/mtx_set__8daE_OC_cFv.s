lbl_807345D8:
/* 807345D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807345DC  7C 08 02 A6 */	mflr r0
/* 807345E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807345E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807345E8  93 C1 00 08 */	stw r30, 8(r1)
/* 807345EC  7C 7E 1B 78 */	mr r30, r3
/* 807345F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807345F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807345F8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807345FC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80734600  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80734604  4B C1 22 E4 */	b PSMTXTrans
/* 80734608  38 7E 06 88 */	addi r3, r30, 0x688
/* 8073460C  4B 8D 89 38 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80734610  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80734614  4B 8D 89 30 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80734618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073461C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80734620  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 80734624  4B 8D 7E 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80734628  3C 60 80 73 */	lis r3, l_HIO@ha
/* 8073462C  38 63 60 60 */	addi r3, r3, l_HIO@l
/* 80734630  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80734634  FC 40 08 90 */	fmr f2, f1
/* 80734638  FC 60 08 90 */	fmr f3, f1
/* 8073463C  4B 8D 87 FC */	b scaleM__14mDoMtx_stack_cFfff
/* 80734640  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80734644  83 E3 00 04 */	lwz r31, 4(r3)
/* 80734648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073464C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80734650  38 9F 00 24 */	addi r4, r31, 0x24
/* 80734654  4B C1 1E 5C */	b PSMTXCopy
/* 80734658  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8073465C  4B 8D CB 90 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80734660  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80734664  28 04 00 00 */	cmplwi r4, 0
/* 80734668  41 82 00 18 */	beq lbl_80734680
/* 8073466C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80734670  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80734674  38 63 02 40 */	addi r3, r3, 0x240
/* 80734678  38 84 00 24 */	addi r4, r4, 0x24
/* 8073467C  4B C1 1E 34 */	b PSMTXCopy
lbl_80734680:
/* 80734680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80734684  83 C1 00 08 */	lwz r30, 8(r1)
/* 80734688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073468C  7C 08 03 A6 */	mtlr r0
/* 80734690  38 21 00 10 */	addi r1, r1, 0x10
/* 80734694  4E 80 00 20 */	blr 
