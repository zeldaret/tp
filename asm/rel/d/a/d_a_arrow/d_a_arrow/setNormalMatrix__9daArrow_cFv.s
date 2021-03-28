lbl_8049AE64:
/* 8049AE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AE68  7C 08 02 A6 */	mflr r0
/* 8049AE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AE70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049AE74  93 C1 00 08 */	stw r30, 8(r1)
/* 8049AE78  7C 7E 1B 78 */	mr r30, r3
/* 8049AE7C  3C 60 80 4A */	lis r3, lit_3768@ha
/* 8049AE80  3B E3 DC 84 */	addi r31, r3, lit_3768@l
/* 8049AE84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049AE88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049AE8C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8049AE90  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8049AE94  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8049AE98  4B EA BA 50 */	b PSMTXTrans
/* 8049AE9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049AEA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049AEA4  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 8049AEA8  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 8049AEAC  38 C0 00 00 */	li r6, 0
/* 8049AEB0  4B B7 13 F0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8049AEB4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8049AEB8  28 00 00 04 */	cmplwi r0, 4
/* 8049AEBC  40 82 00 18 */	bne lbl_8049AED4
/* 8049AEC0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8049AEC4  FC 40 08 90 */	fmr f2, f1
/* 8049AEC8  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 8049AECC  4B B7 1E D0 */	b transM__14mDoMtx_stack_cFfff
/* 8049AED0  48 00 00 1C */	b lbl_8049AEEC
lbl_8049AED4:
/* 8049AED4  28 00 00 05 */	cmplwi r0, 5
/* 8049AED8  40 82 00 14 */	bne lbl_8049AEEC
/* 8049AEDC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8049AEE0  FC 40 08 90 */	fmr f2, f1
/* 8049AEE4  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 8049AEE8  4B B7 1E B4 */	b transM__14mDoMtx_stack_cFfff
lbl_8049AEEC:
/* 8049AEEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049AEF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049AEF4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8049AEF8  38 84 00 24 */	addi r4, r4, 0x24
/* 8049AEFC  4B EA B5 B4 */	b PSMTXCopy
/* 8049AF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049AF04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049AF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049AF0C  7C 08 03 A6 */	mtlr r0
/* 8049AF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8049AF14  4E 80 00 20 */	blr 
