lbl_80831B08:
/* 80831B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80831B0C  7C 08 02 A6 */	mflr r0
/* 80831B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80831B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80831B18  7C 7F 1B 78 */	mr r31, r3
/* 80831B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80831B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80831B24  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80831B28  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80831B2C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80831B30  4B B1 4D B8 */	b PSMTXTrans
/* 80831B34  3C 60 80 83 */	lis r3, lit_3790@ha
/* 80831B38  C0 23 2C FC */	lfs f1, lit_3790@l(r3)
/* 80831B3C  C0 5F 07 1C */	lfs f2, 0x71c(r31)
/* 80831B40  FC 60 08 90 */	fmr f3, f1
/* 80831B44  4B 7D B2 58 */	b transM__14mDoMtx_stack_cFfff
/* 80831B48  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80831B4C  4B 7D B3 F8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80831B50  38 7F 07 00 */	addi r3, r31, 0x700
/* 80831B54  4B 7D B3 F0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80831B58  C0 3F 06 F4 */	lfs f1, 0x6f4(r31)
/* 80831B5C  C0 5F 06 F8 */	lfs f2, 0x6f8(r31)
/* 80831B60  C0 7F 06 FC */	lfs f3, 0x6fc(r31)
/* 80831B64  4B 7D B2 D4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80831B68  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80831B6C  80 83 00 04 */	lwz r4, 4(r3)
/* 80831B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80831B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80831B78  38 84 00 24 */	addi r4, r4, 0x24
/* 80831B7C  4B B1 49 34 */	b PSMTXCopy
/* 80831B80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80831B84  4B 7D F6 68 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80831B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80831B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80831B90  7C 08 03 A6 */	mtlr r0
/* 80831B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80831B98  4E 80 00 20 */	blr 
